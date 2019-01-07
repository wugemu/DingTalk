.class public final Lcxh;
.super Ljava/lang/Object;
.source "SessionItemHolderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILandroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)Lcxg;
    .locals 6
    .param p0, "displayType"    # I
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .param p5, "showBottomLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;Z)",
            "Lcxg;"
        }
    .end annotation

    .prologue
    .line 17
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 18
    new-instance v0, Lcxl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcxl;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V

    .line 24
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 20
    new-instance v0, Lcxf;

    invoke-direct {v0, p1, p2, p3, p4}, Lcxf;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V

    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 22
    new-instance v0, Lcxj;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcxj;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V

    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Lcxk;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcxk;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V

    goto :goto_0
.end method
