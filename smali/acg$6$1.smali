.class final Lacg$6$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$6;


# direct methods
.method constructor <init>(Lacg$6;)V
    .locals 0
    .param p1, "this$0"    # Lacg$6;

    .prologue
    .line 1158
    iput-object p1, p0, Lacg$6$1;->a:Lacg$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1167
    const-string/jumbo v0, "bindEmail, bind"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1168
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 1169
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2162
    const-string/jumbo v0, "bindEmail, AlimeiSDKProxy.getAccountApi().updateDisplayName"

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    return-void
.end method
