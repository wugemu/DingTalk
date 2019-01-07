.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$122;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldnu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 4242
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$122;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/alibaba/wukong/im/Message;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "clickedImageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4246
    .local p3, "imageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$122;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Ldoi;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/wukong/im/Message;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 4249
    return-void
.end method
