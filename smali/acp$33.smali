.class final Lacp$33;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lacp$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 376
    iput-object p1, p0, Lacp$33;->b:Lacp;

    iput-object p2, p0, Lacp$33;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isPopup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    iget-object v0, p0, Lacp$33;->b:Lacp;

    iget-object v1, p0, Lacp$33;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lacp;->b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)Z

    .line 382
    :cond_0
    return-void
.end method
