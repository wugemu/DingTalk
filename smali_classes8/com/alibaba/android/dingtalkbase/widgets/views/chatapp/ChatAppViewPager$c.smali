.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;
.super Ljava/lang/Object;
.source "ChatAppViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field public b:Landroid/widget/GridView;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;Landroid/view/View;Landroid/widget/GridView;)V
    .locals 0
    .param p2, "page"    # Landroid/view/View;
    .param p3, "gridView"    # Landroid/widget/GridView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->a:Landroid/view/View;

    .line 231
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->b:Landroid/widget/GridView;

    .line 232
    return-void
.end method
