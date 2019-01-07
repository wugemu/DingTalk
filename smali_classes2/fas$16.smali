.class public final Lfas$16;
.super Ljava/lang/Object;
.source "LoginApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcfo;

.field final synthetic e:Lcmi;

.field final synthetic f:Lfas;


# direct methods
.method public constructor <init>(Lfas;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 149
    iput-object p1, p0, Lfas$16;->f:Lfas;

    iput-object p2, p0, Lfas$16;->a:Landroid/content/Context;

    iput-object p3, p0, Lfas$16;->b:Ljava/lang/String;

    iput-object p4, p0, Lfas$16;->c:Ljava/lang/String;

    iput-object p5, p0, Lfas$16;->d:Lcfo;

    iput-object p6, p0, Lfas$16;->e:Lcmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lfas$16;->a:Landroid/content/Context;

    invoke-static {v0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v8

    .line 153
    .local v8, "isSimulator":Z
    iget-object v0, p0, Lfas$16;->a:Landroid/content/Context;

    invoke-static {v0, v8}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "t":Ljava/lang/String;
    iget-object v0, p0, Lfas$16;->f:Lfas;

    invoke-static {v0}, Lfas;->a(Lfas;)Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    move-result-object v0

    iget-object v1, p0, Lfas$16;->b:Ljava/lang/String;

    iget-object v2, p0, Lfas$16;->c:Ljava/lang/String;

    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lfas$16;->d:Lcfo;

    const/4 v6, 0x0

    iget-object v7, p0, Lfas$16;->e:Lcmi;

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->verifyThirdPartyAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Liyv;)V

    .line 158
    return-void
.end method
