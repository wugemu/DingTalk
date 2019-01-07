.class public final Lavr$10;
.super Ljava/lang/Object;
.source "CalendarNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lavr$10;->a:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    iput-object p2, p0, Lavr$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 245
    const-string/jumbo v0, "intent_key_detail_share_schedule"

    iget-object v1, p0, Lavr$10;->a:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "calendar_share_folder_id"

    iget-object v1, p0, Lavr$10;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    return-object p1
.end method
