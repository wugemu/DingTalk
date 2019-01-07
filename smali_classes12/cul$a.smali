.class final Lcul$a;
.super Ljava/lang/Object;
.source "ConversationLinksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcul$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/view/View;

.field j:Lcts$c;

.field k:Lcul$a$a;

.field final synthetic l:Lcul;


# direct methods
.method private constructor <init>(Lcul;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcul$a;->l:Lcul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcul$a$1;

    invoke-direct {v0, p0}, Lcul$a$1;-><init>(Lcul$a;)V

    iput-object v0, p0, Lcul$a;->j:Lcts$c;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcul;B)V
    .locals 0
    .param p1, "x0"    # Lcul;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcul$a;-><init>(Lcul;)V

    return-void
.end method
