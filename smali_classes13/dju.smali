.class public final Ldju;
.super Ljava/lang/Object;
.source "IMEventButler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldju$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a(Landroid/widget/AbsListView;Ldju$a;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "scrollListener"    # Ldju$a;
    .param p2, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 1102
    iput-object p2, p1, Ldju$a;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    :cond_0
    return-void
.end method
