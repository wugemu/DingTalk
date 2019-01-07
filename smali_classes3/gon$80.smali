.class public final Lgon$80;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 4041
    iput-object p1, p0, Lgon$80;->b:Lgon;

    iput-object p2, p0, Lgon$80;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4044
    iget-object v0, p0, Lgon$80;->a:Lcma;

    const-string/jumbo v1, "20170720"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    return-void
.end method
