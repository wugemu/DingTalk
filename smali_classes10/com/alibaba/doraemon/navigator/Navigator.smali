.class public interface abstract Lcom/alibaba/doraemon/navigator/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# static fields
.field public static final NAVIGATOR_ARTIFACT:Ljava/lang/String; = "NAVIGATOR"


# virtual methods
.method public abstract from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;
.end method

.method public abstract loginFinshAndForward()V
.end method

.method public abstract setLoginProcesser(Lcom/alibaba/doraemon/navigator/Authenticator;)V
.end method

.method public abstract setPageSwitchListener(Lcom/alibaba/doraemon/navigator/PageSwitchListener;)V
.end method

.method public abstract to(Ljava/lang/String;)V
.end method

.method public abstract to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
.end method

.method public abstract to(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z
.end method

.method public abstract to(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z
.end method
