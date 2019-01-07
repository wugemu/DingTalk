.class public final Lbjw$2;
.super Ljava/lang/Object;
.source "DingNotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjw;


# direct methods
.method public constructor <init>(Lbjw;)V
    .locals 0
    .param p1, "this$0"    # Lbjw;

    .prologue
    .line 73
    iput-object p1, p0, Lbjw$2;->a:Lbjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lbjw$2;->a:Lbjw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbjw;->a(Lbjw;Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    .line 77
    return-void
.end method
