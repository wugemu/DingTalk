.class final Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;
.super Ljava/lang/Object;
.source "VoiceTranslateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

.field private b:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;->a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 271
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;->a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method
