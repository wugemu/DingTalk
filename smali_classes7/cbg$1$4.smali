.class final Lcbg$1$4;
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
.field final synthetic a:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

.field final synthetic b:Lcbg$1;


# direct methods
.method constructor <init>(Lcbg$1;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;)V
    .locals 0
    .param p1, "this$1"    # Lcbg$1;

    .prologue
    .line 400
    iput-object p1, p0, Lcbg$1$4;->b:Lcbg$1;

    iput-object p2, p0, Lcbg$1$4;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Lcbg$1$4;->b:Lcbg$1;

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    iget-object v1, p0, Lcbg$1$4;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 404
    return-void
.end method
