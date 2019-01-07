.class public final Lfge$a;
.super Ljava/lang/Object;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field final synthetic d:Lfge;


# direct methods
.method public constructor <init>(Lfge;)V
    .locals 0
    .param p1, "this$0"    # Lfge;

    .prologue
    .line 184
    .local p0, "this":Lfge$a;, "Lfge<TT;>.a;"
    iput-object p1, p0, Lfge$a;->d:Lfge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
