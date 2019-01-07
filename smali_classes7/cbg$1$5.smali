.class final Lcbg$1$5;
.super Ljava/lang/Object;
.source "FestivalRedPacketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcbg$1;


# direct methods
.method constructor <init>(Lcbg$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcbg$1;

    .prologue
    .line 412
    iput-object p1, p0, Lcbg$1$5;->c:Lcbg$1;

    iput-object p2, p0, Lcbg$1$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcbg$1$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lcbg$1$5;->c:Lcbg$1;

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    iget-object v1, p0, Lcbg$1$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcbg$1$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method
