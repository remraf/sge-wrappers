#!/usr/bin/perl
#
#my $my_phrase=", 0 packets received";
#
#my $i = 1;
#my $end_node = 4;
#my $b_flag=0;
#my $results;
#
#if (@ARGV) {
#
#	if ( ($ARGV[0] > 0) && ($ARGV[0] < ($end_node+1)) ) {
#		     $i = $ARGV[0];
#		     	}
#		     		else {
#		     				print "Usage: nodechk [node#] [end node#]\n";
#		     						print "use 1 - 4 for node01 - node04\n";
#		     								die( "error: node outside range (1 - $end_node)\n");
#		     									}
#		     										if (@ARGV == 2) {
#		     												if ( ($ARGV[1] >= $i) && ($ARGV[1] < ($end_node+1)) ) {
#		     														     $end_node = $ARGV[1];
#		     														     		}
#		     														     			        else {
#		     														     			        	              	print "Usage: nodechk [node#] [end node#]\n";
#		     														     			        	              						print "use 1 - 4 for node01 - node04\n";
#		     														     			        	              							                die( "error: node outside range (1 - $end_node)\n");
#		     														     			        	              							                        	}
#		     														     			        	              							                        		}
#		     														     			        	              							                        			else {
#		     														     			        	              							                        					$end_node = $i
#		     														     			        	              							                        						}
#		     														     			        	              							                        								
#
#		     														     			        	              							                        								}
#
#		     														     			        	              							                        								print "Node\t\tFreeSpace\t%Used\tLoad(1)\t  (5)\t(15)\tDate \tTime\n";
#		     														     			        	              							                        								while ($i < ($end_node+1) ) {
#		     														     			        	              							                        								  $j = ($i < 10 ? "0" :  "") . $i;
#		     														     			        	              							                        								    $my_node="node$j"; 
#
#		     														     			        	              							                        								      
#		     														     			        	              							                        								        $HNAME=`ping -c1 $my_node 2>&1`;
#		     														     			        	              							                        								        #	print $HNAME;
#		     														     			        	              							                        								          if ( $HNAME =~ /.*$my_phrase.*/ ) {
#		     														     			        	              							                        								          	print "$my_node not responding to ping\n";
#		     														     			        	              							                        								          	  }
#		     														     			        	              							                        								          	    else {
#		     														     			        	              							                        								          	    	$HNAME=`ssh $my_node df -h /home 2>&1`;
#		     														     			        	              							                        								          	    		$HNAME =~ /([.0-9]+[KMGT])\s*([.0-9]+%)/;
#		     														     			        	              							                        								          	    			print "$my_node:\t\t$1\t\t$2\t";
#		     														     			        	              							                        								          	    				$the_date=`ssh $my_node 'date \"+%m-%d  %H:%M\"' 2>&1`;
#		     														     			        	              							                        								          	    					$HNAME2=`ssh $my_node uptime 2>&1`;
#		     														     			        	              							                        								          	    					    $HNAME2 =~ /load averages?: ([.0-9]+),\s*([.0-9]+),\s*([.0-9]+)/;
#		     														     			        	              							                        								          	    					    # "the_date" seems to have a pendant new-line already
#		     														     			        	              							                        								          	    					    	print "$1\t$2\t$3\t$the_date";
#		     														     			        	              							                        								          	    					    	   }
#		     														     			        	              							                        								          	    					    	      $i++;
#		     														     			        	              							                        								          	    					    	      }
#
#
