.class final Ldab$5$1;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Ldkg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldab$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldab$5;


# direct methods
.method constructor <init>(Ldab$5;)V
    .locals 0
    .param p1, "this$1"    # Ldab$5;

    .prologue
    .line 576
    iput-object p1, p0, Ldab$5$1;->a:Ldab$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;)V
    .locals 2
    .param p1, "oaActionListDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 579
    invoke-static {p1}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 580
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ldab$5$1;->a:Ldab$5;

    iget-object v1, v1, Ldab$5;->e:Ldab;

    invoke-static {v1}, Ldab;->a(Ldab;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 581
    return-void
.end method
