.class final Ldfb$1;
.super Ljava/lang/Object;
.source "EducationChatPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldfb;


# direct methods
.method constructor <init>(Ldfb;)V
    .locals 0
    .param p1, "this$0"    # Ldfb;

    .prologue
    .line 72
    iput-object p1, p0, Ldfb$1;->a:Ldfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_education_check_teacher_msg_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Ldfb$1;->a:Ldfb;

    invoke-static {v0}, Ldfb;->a(Ldfb;)V

    .line 77
    return-void
.end method
