.class final Ldfb$2;
.super Ljava/lang/Object;
.source "EducationChatPlugin.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ldup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldfb;


# direct methods
.method constructor <init>(Ldfb;J)V
    .locals 0
    .param p1, "this$0"    # Ldfb;

    .prologue
    .line 98
    iput-object p1, p0, Ldfb$2;->b:Ldfb;

    iput-wide p2, p0, Ldfb$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    check-cast p1, Ljava/util/List;

    .line 1102
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "EducationChatPlugin"

    const-string/jumbo v2, "TagIService listEntities-->onDataReceived"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    :cond_0
    sget v0, Lctk$i;->dt_im_education_get_tag_entity_emty:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1105
    iget-object v0, p0, Ldfb$2;->b:Ldfb;

    invoke-static {v0}, Ldfb;->b(Ldfb;)V

    .line 1122
    :cond_1
    :goto_0
    return-void

    .line 1108
    :cond_2
    iget-object v0, p0, Ldfb$2;->b:Ldfb;

    iget-object v0, v0, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 1109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldup;

    .line 1112
    if-eqz v0, :cond_3

    iget-object v4, v0, Ldup;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1113
    iget-object v0, v0, Ldup;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1116
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1117
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1125
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-wide v4, p0, Ldfb$2;->a:J

    new-instance v3, Ldfb$2$1;

    invoke-direct {v3, p0}, Ldfb$2$1;-><init>(Ldfb$2;)V

    const-class v6, Lcma;

    iget-object v0, p0, Ldfb$2;->b:Ldfb;

    iget-object v0, v0, Ldfb;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v3, v6, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v4, v5, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JLjava/util/List;Lcma;)V

    goto :goto_0

    .line 1120
    :cond_5
    sget v0, Lctk$i;->dt_im_education_get_tag_entity_emty:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1121
    iget-object v0, p0, Ldfb$2;->b:Ldfb;

    invoke-static {v0}, Ldfb;->b(Ldfb;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "EducationChatPlugin"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "TagIService listEntities-->onException errorcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",error:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Ldfb$2;->b:Ldfb;

    invoke-static {v0}, Ldfb;->b(Ldfb;)V

    .line 166
    sget v0, Lctk$i;->dt_im_education_get_tag_entity_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 167
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 172
    return-void
.end method
