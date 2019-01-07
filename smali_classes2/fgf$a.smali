.class public final Lfgf$a;
.super Ljava/lang/Object;
.source "BaseSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/CheckBox;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field final synthetic f:Lfgf;


# direct methods
.method public constructor <init>(Lfgf;)V
    .locals 0
    .param p1, "this$0"    # Lfgf;

    .prologue
    .line 129
    .local p0, "this":Lfgf$a;, "Lfgf<TT;>.a;"
    iput-object p1, p0, Lfgf$a;->f:Lfgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
