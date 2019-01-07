.class public Lcwe$b;
.super Ljava/lang/Object;
.source "MemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0
    .param p1, "dividerView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 79
    return-void
.end method

.method public a(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "letterTextView"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    .line 77
    return-void
.end method
