.class final Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;
.super Ljava/lang/Object;
.source "LaiwangSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "fixed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "spansWithSpacesBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "spansWithSpacesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->a:Z

    .line 51
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->b:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$a;->c:Ljava/util/List;

    .line 53
    return-void
.end method
