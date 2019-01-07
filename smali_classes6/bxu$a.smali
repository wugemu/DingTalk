.class final Lbxu$a;
.super Ljava/lang/Object;
.source "LiveLinkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget v0, Lbtp$e;->group_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxu$a;->a:Landroid/widget/TextView;

    .line 117
    sget v0, Lbtp$e;->group_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxu$a;->b:Landroid/widget/TextView;

    .line 118
    sget v0, Lbtp$e;->session_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbxu$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 119
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lbxu$a;-><init>(Landroid/view/View;)V

    return-void
.end method
