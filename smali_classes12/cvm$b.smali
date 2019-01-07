.class final Lcvm$b;
.super Ljava/lang/Object;
.source "ForwardConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/CheckBox;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field final synthetic h:Lcvm;


# direct methods
.method constructor <init>(Lcvm;)V
    .locals 0
    .param p1, "this$0"    # Lcvm;

    .prologue
    .line 265
    iput-object p1, p0, Lcvm$b;->h:Lcvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
