.class public Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$ACT_CONF;
.super Ljava/lang/Object;
.source "BaseFBPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACT_CONF"
.end annotation


# static fields
.field public static final hwAuthTip:Ljava/lang/String; = "hwAuthTip"

.field public static final hwAuthingText:Ljava/lang/String; = "hwAuthingText"

.field public static final hwInputPwdTip:Ljava/lang/String; = "hwInputPwdTip"

.field public static final hwPaySuccessText:Ljava/lang/String; = "hwPaySuccessText"

.field public static final hwPayingText:Ljava/lang/String; = "hwPayingText"

.field public static final hwRetryText:Ljava/lang/String; = "hwRetryText"

.field public static final loadingPaySuccessText:Ljava/lang/String; = "loadingPaySuccessText"

.field public static final loadingPayingText:Ljava/lang/String; = "loadingPayingText"

.field public static final pwdInputBtn:Ljava/lang/String; = "pwdInputBtn"

.field public static final pwdInputTip:Ljava/lang/String; = "pwdInputTip"

.field public static final pwdPlaceHolder:Ljava/lang/String; = "pwdPlaceHolder"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$ACT_CONF;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
