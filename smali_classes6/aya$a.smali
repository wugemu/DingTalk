.class public Laya$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DingMeetingMinutesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Laya$d;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Laya$d;)V
    .locals 0
    .param p1, "onDisallowInterceptListener"    # Laya$d;

    .prologue
    .line 63
    iput-object p1, p0, Laya$a;->a:Laya$d;

    .line 64
    return-void
.end method

.method public a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 0
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isLast"    # Z

    .prologue
    .line 72
    return-void
.end method
