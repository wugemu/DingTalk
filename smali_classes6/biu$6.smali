.class final Lbiu$6;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbiu;


# direct methods
.method constructor <init>(Lbiu;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 607
    iput-object p1, p0, Lbiu$6;->a:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 610
    iget-object v0, p0, Lbiu$6;->a:Lbiu;

    .line 1065
    iget-object v0, v0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 610
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setStrikeValue(F)V

    .line 611
    iget-object v0, p0, Lbiu$6;->a:Lbiu;

    .line 2065
    iget-object v0, v0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    .line 611
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setStrikeValue(F)V

    .line 612
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 616
    return-void
.end method
