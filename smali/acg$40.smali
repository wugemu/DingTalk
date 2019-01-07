.class final Lacg$40;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 3182
    iput-object p1, p0, Lacg$40;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$40;->b:Ljava/lang/String;

    iput-object p3, p0, Lacg$40;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 3186
    iget-object v1, p0, Lacg$40;->a:Ljava/lang/String;

    iget-object v2, p0, Lacg$40;->b:Ljava/lang/String;

    new-instance v3, Lacg$40$1;

    invoke-direct {v3, p0}, Lacg$40$1;-><init>(Lacg$40;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 3263
    return-void
.end method
