.class final Lgon$53;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(JLjava/lang/String;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2936
    iput-object p1, p0, Lgon$53;->b:Lgon;

    iput-object p2, p0, Lgon$53;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2939
    iget-object v0, p0, Lgon$53;->a:Lcma;

    const-string/jumbo v1, "SERVICE_NULL"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    return-void
.end method
