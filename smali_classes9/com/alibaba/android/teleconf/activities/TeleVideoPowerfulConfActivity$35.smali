.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iput p3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 859
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    .line 861
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;->b:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 862
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 867
    return-void
.end method
