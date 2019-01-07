.class final Lacr$3;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lacr;


# direct methods
.method constructor <init>(Lacr;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1349
    iput-object p1, p0, Lacr$3;->c:Lacr;

    iput-object p2, p0, Lacr$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lacr$3;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1361
    iget-object v0, p0, Lacr$3;->c:Lacr;

    invoke-static {v0}, Lacr;->b(Lacr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lacr;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacr$3$1;

    invoke-direct {v2, p0}, Lacr$3$1;-><init>(Lacr$3;)V

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    .line 1380
    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1357
    invoke-direct {p0}, Lacr$3;->a()V

    .line 1358
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1349
    .line 2352
    invoke-direct {p0}, Lacr$3;->a()V

    .line 1349
    return-void
.end method
