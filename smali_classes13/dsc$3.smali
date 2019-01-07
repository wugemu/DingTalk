.class final Ldsc$3;
.super Ljava/lang/Object;
.source "ShareDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsc;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldsc;


# direct methods
.method constructor <init>(Ldsc;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldsc;

    .prologue
    .line 241
    iput-object p1, p0, Ldsc$3;->d:Ldsc;

    iput-object p2, p0, Ldsc$3;->a:Lcma;

    iput-object p3, p0, Ldsc$3;->b:Ljava/lang/String;

    iput-object p4, p0, Ldsc$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Ldsc$3;->a:Lcma;

    iget-object v1, p0, Ldsc$3;->b:Ljava/lang/String;

    iget-object v2, p0, Ldsc$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
