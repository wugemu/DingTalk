.class final Leed$a;
.super Ljava/lang/Object;
.source "DetailUniformGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field final synthetic d:Leed;


# direct methods
.method public constructor <init>(Leed;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Leed$a;->d:Leed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Ledz$f;->attendance_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Leed$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 46
    sget v0, Ledz$f;->attendance_avatar_omit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leed$a;->c:Landroid/view/View;

    .line 47
    sget v0, Ledz$f;->attendance_avatar_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leed$a;->b:Landroid/widget/TextView;

    .line 48
    return-void
.end method
