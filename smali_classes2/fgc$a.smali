.class final Lfgc$a;
.super Ljava/lang/Object;
.source "Add2GroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic e:Lfgc;


# direct methods
.method constructor <init>(Lfgc;)V
    .locals 0
    .param p1, "this$0"    # Lfgc;

    .prologue
    .line 105
    iput-object p1, p0, Lfgc$a;->e:Lfgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
