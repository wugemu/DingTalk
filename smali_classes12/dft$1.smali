.class final Ldft$1;
.super Lcmg;
.source "ConversationThemeApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldft;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldgc;",
        "Ldge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldft;


# direct methods
.method constructor <init>(Ldft;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldft;

    .prologue
    .line 22
    .local p2, "x0":Lcma;, "Lcma<Ldge;>;"
    iput-object p1, p0, Ldft$1;->a:Ldft;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    check-cast p1, Ldgc;

    .line 2023
    if-nez p1, :cond_0

    .line 2024
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2027
    :cond_0
    new-instance v0, Ldge;

    invoke-direct {v0}, Ldge;-><init>()V

    .line 2028
    iget-object v1, p1, Ldgc;->a:Ldfz;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->fromIdl(Ldfz;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    iput-object v1, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 2029
    iget-object v1, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v1, :cond_1

    .line 2030
    iget-object v1, v0, Ldge;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    const/4 v2, 0x1

    iput v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 2032
    :cond_1
    iget-object v1, p1, Ldgc;->b:Ldfz;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->fromIdl(Ldfz;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    iput-object v1, v0, Ldge;->b:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 2033
    iget-object v1, p1, Ldgc;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldge;->c:Ljava/util/List;

    .line 2034
    iget-object v1, p1, Ldgc;->d:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Ldge;->d:J

    goto :goto_0
.end method
