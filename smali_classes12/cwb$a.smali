.class final Lcwb$a;
.super Ljava/lang/Object;
.source "GroupRingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field d:Landroid/widget/RelativeLayout;

.field final synthetic e:Lcwb;


# direct methods
.method constructor <init>(Lcwb;)V
    .locals 0
    .param p1, "this$0"    # Lcwb;

    .prologue
    .line 85
    iput-object p1, p0, Lcwb$a;->e:Lcwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
