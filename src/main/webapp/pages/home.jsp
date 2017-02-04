<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!--Hero_Section-->
<section id="hero_section" class="top_cont_outer">
    <div class="hero_wrapper">
        <div class="container">
            <div class="hero_section">
                <div class="row">
                    <div class="col-lg-5 col-sm-7">
                        <div class="top_left_cont zoomIn wow animated">
                            <h2>Seryozha <strong>JAVA DEVELOPER</strong></h2>

                            <p>
                                I'm a Java developer. I have over 4 years experience in this sphere.
                            </p>
                            <a href="#service" class="read_more2">Read more</a></div>
                    </div>
                    <div>
                        <img src="<%=request.getContextPath()%>/images/mainImg.png"
                             class="bannerImg zoomIn wow animated" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Hero_Section-->

<section id="aboutUs"><!--Aboutus-->
    <div class="inner_wrapper">
        <div class="container">
            <h2>About Me</h2>

            <div class="inner_section">
                <div class="row">
                    <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 pull-right">
                        <img style="width: 280px;height: 300px;" src="<%=request.getContextPath()%>/images/serozh.jpg"
                             class="img-circle delay-03s animated wow zoomIn"
                             alt="">
                    </div>
                    <div class=" col-lg-7 col-md-7 col-sm-7 col-xs-12 pull-left">
                        <div class=" delay-01s animated fadeInDown wow animated">
                            <h3>About Me :)</h3><br/>

                            <p>
                                I'm a Java developer. I have over 4 years experience in this sphere.
                                Has a creative & innovative striving to improve and willing to learn strong
                                problem-solving skills.
                                Able to work effectively alone as well as in a team. Ability to adapt easily to the new
                                environment
                            </p>
                        </div>
                        <div class="work_bottom">
                            <span>Want to know more..</span>
                            <a href="#contact" class="contact_btn">Contact Us</a>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</section>
<!--Aboutus-->

<!-- Answers -->
<section id="answers">
    <div class="inner_wrapper">
        <div class="container">
            <h2>Answers</h2>

            <div class="inner_section">
                <div class="row">
                    <div class=" delay-01s animated fadeInDown wow animated">
                        <s:iterator var="answer" value="answers">
                            <h3>
                                <s:property value="#answer.question.text"/>
                            </h3>
                            <p>
                                <s:property value="#answer.answer"/>
                            </p>
                            <br/>
                        </s:iterator>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>