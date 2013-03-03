<?php

use Behat\MinkExtension\Context\MinkContext;

class FeatureContext extends MinkContext
{
    /**
     * @Then /^I wait for ((\d+|\.)+) second(s?)$/
     */
    public function iWaitForANumberOfSeconds($seconds)
    {
        $this->getSession()->wait($seconds * 1000);
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        