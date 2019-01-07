.class public final Lbmd;
.super Ljava/lang/Object;
.source "AsyncResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Liyn;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Liyn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lbmi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lbmd;, "Lbmd<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 38
    .local p0, "this":Lbmd;, "Lbmd<TT;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    iget-object v1, p0, Lbmd;->b:Liyn;

    iget-object v2, p0, Lbmd;->a:Ljava/lang/String;

    iget-object v3, p0, Lbmd;->c:Lbmi;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->sendAck(Liyn;Ljava/lang/String;Lbmi;)V

    .line 39
    return-void
.end method
