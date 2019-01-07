.class final Lfas$18;
.super Ljava/lang/Object;
.source "LoginApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcfo;

.field final synthetic g:Lcfw;

.field final synthetic h:Lcmi;

.field final synthetic i:Lfas;


# direct methods
.method constructor <init>(Lfas;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 198
    iput-object p1, p0, Lfas$18;->i:Lfas;

    iput-object p2, p0, Lfas$18;->a:Landroid/content/Context;

    iput-object p3, p0, Lfas$18;->b:Ljava/lang/String;

    iput-object p4, p0, Lfas$18;->c:Ljava/lang/String;

    iput-object p5, p0, Lfas$18;->d:Ljava/lang/String;

    iput-object p6, p0, Lfas$18;->e:Ljava/lang/String;

    iput-object p7, p0, Lfas$18;->f:Lcfo;

    iput-object p8, p0, Lfas$18;->g:Lcfw;

    iput-object p9, p0, Lfas$18;->h:Lcmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lfas$18;->a:Landroid/content/Context;

    invoke-static {v0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v9

    .line 202
    .local v9, "isSimulator":Z
    iget-object v0, p0, Lfas$18;->a:Landroid/content/Context;

    invoke-static {v0, v9}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "t":Ljava/lang/String;
    iget-object v0, p0, Lfas$18;->i:Lfas;

    invoke-static {v0}, Lfas;->a(Lfas;)Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    move-result-object v0

    iget-object v1, p0, Lfas$18;->b:Ljava/lang/String;

    iget-object v2, p0, Lfas$18;->c:Ljava/lang/String;

    iget-object v3, p0, Lfas$18;->d:Ljava/lang/String;

    iget-object v4, p0, Lfas$18;->e:Ljava/lang/String;

    iget-object v6, p0, Lfas$18;->f:Lcfo;

    iget-object v7, p0, Lfas$18;->g:Lcfw;

    iget-object v8, p0, Lfas$18;->h:Lcmi;

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->tokenLoginByThirdParty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Liyv;)V

    .line 205
    return-void
.end method
