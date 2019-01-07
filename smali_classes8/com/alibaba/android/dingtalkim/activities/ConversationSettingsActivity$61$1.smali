.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    .prologue
    .line 3627
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3630
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->a:Ljava/util/List;

    sget-object v7, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;)V

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    .line 3676
    return-void
.end method
