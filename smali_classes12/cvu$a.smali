.class public final Lcvu$a;
.super Ljava/lang/Object;
.source "GroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public e:Landroid/widget/CheckBox;

.field final synthetic f:Lcvu;


# direct methods
.method public constructor <init>(Lcvu;)V
    .locals 0
    .param p1, "this$0"    # Lcvu;

    .prologue
    .line 244
    iput-object p1, p0, Lcvu$a;->f:Lcvu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
