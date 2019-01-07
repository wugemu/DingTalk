.class final Lggj$1;
.super Ljava/lang/Object;
.source "ImageRecentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggj;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ImageView;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    sget v0, Lfzs$h;->space_recent_file_has_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 102
    return-void
.end method
