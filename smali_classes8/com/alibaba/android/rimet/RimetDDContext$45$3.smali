.class final Lcom/alibaba/android/rimet/RimetDDContext$45$3;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Lcom/alibaba/android/rimet/RimetDDContext$45;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$45;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->h:Lcom/alibaba/android/rimet/RimetDDContext$45;

    iput-wide p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->a:J

    iput p4, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->b:I

    iput-object p5, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->f:Ljava/lang/String;

    iput-wide p9, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 905
    const-string/jumbo v0, "message_id"

    iget-wide v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 906
    const-string/jumbo v0, "file_icon"

    iget v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string/jumbo v0, "file_name"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string/jumbo v0, "file_size"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string/jumbo v0, "file_url"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string/jumbo v0, "file_type"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;->g:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 912
    return-object p1
.end method
