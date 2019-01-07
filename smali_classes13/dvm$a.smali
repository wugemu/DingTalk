.class final Ldvm$a;
.super Ljava/lang/Object;
.source "ExpandableGroupConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic e:Ldvm;


# direct methods
.method constructor <init>(Ldvm;)V
    .locals 0
    .param p1, "this$0"    # Ldvm;

    .prologue
    .line 305
    iput-object p1, p0, Ldvm$a;->e:Ldvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
