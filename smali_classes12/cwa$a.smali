.class final Lcwa$a;
.super Ljava/lang/Object;
.source "GroupOrgSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field final synthetic d:Lcwa;


# direct methods
.method constructor <init>(Lcwa;)V
    .locals 0
    .param p1, "this$0"    # Lcwa;

    .prologue
    .line 71
    iput-object p1, p0, Lcwa$a;->d:Lcwa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
