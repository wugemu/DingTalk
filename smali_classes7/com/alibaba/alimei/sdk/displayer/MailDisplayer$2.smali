.class Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;
.super Ljava/lang/Object;
.source "MailDisplayer.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;ILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mailServerId:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Lxv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$mailServerId:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lyc;)V
    .locals 10
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1172
    const/4 v7, 0x2

    iget v8, p1, Lyc;->c:I

    if-ne v7, v8, :cond_2

    .line 1173
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    if-eqz v6, :cond_0

    .line 1174
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1176
    :cond_0
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v6

    invoke-interface {v6, p0}, Lya;->a(Lyb;)V

    .line 1212
    :cond_1
    :goto_0
    return-void

    .line 1177
    :cond_2
    iget v7, p1, Lyc;->c:I

    if-ne v9, v7, :cond_1

    .line 1178
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v7

    invoke-interface {v7, p0}, Lya;->a(Lyb;)V

    .line 1179
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    new-array v8, v9, [Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$mailServerId:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v7, v6, v8}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$300(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1180
    .local v5, "targetIds":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v7, v5

    if-nez v7, :cond_4

    .line 1181
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    if-eqz v6, :cond_1

    .line 1182
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v7

    invoke-interface {v6, v7}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1187
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1188
    .local v3, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_6

    aget-object v4, v5, v6

    .line 1189
    .local v4, "serverId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-static {v8}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$400(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1190
    .local v1, "lid":Ljava/lang/Long;
    if-eqz v1, :cond_5

    .line 1191
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-static {v8}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$500(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1192
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_5

    .line 1194
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    iget-object v8, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v8, :cond_5

    .line 1196
    iget-object v8, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$status:I

    iput v9, v8, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    .line 1188
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1201
    .end local v1    # "lid":Ljava/lang/Long;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1202
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-static {v6, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->access$600(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Ljava/util/List;)Z

    move-result v0

    .line 1203
    .local v0, "isNotifyDatachanged":Z
    if-eqz v0, :cond_7

    .line 1204
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 1208
    .end local v0    # "isNotifyDatachanged":Z
    :cond_7
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    if-eqz v6, :cond_1

    .line 1209
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v7

    invoke-interface {v6, v7}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
