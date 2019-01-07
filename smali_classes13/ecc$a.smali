.class public final Lecc$a;
.super Ljava/lang/Object;
.source "DingGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/widget/TextView;

.field final synthetic c:Lecc;


# direct methods
.method public constructor <init>(Lecc;)V
    .locals 0
    .param p1, "this$0"    # Lecc;

    .prologue
    .line 75
    iput-object p1, p0, Lecc$a;->c:Lecc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
