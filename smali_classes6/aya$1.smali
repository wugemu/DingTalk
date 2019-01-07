.class final Laya$1;
.super Ljava/lang/Object;
.source "DingMeetingMinutesAdapter.java"

# interfaces
.implements Layn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laya;


# direct methods
.method constructor <init>(Laya;)V
    .locals 0
    .param p1, "this$0"    # Laya;

    .prologue
    .line 196
    iput-object p1, p0, Laya$1;->a:Laya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Laya$1;->a:Laya;

    invoke-static {v0}, Laya;->b(Laya;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object v0, p0, Laya$1;->a:Laya;

    invoke-virtual {v0}, Laya;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
