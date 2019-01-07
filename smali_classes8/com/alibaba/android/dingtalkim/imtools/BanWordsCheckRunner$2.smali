.class final Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "BanWordsCheckRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 280
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v1, 0x0

    .line 281
    .local v1, "matched":Z
    if-eqz p1, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 283
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 4022
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 5022
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 285
    const/4 v1, 0x1

    .line 290
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    if-eqz v1, :cond_2

    .line 291
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 6022
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c()V

    .line 293
    :cond_2
    return-void
.end method


# virtual methods
.method public final onAtMeStatusChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onAtMeStatusChanged(Ljava/util/List;)V

    .line 191
    return-void
.end method

.method public final onAuthorityChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onAuthorityChanged(Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public final onBanWordsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onBanWordsChanged(Ljava/util/List;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a(Ljava/util/List;)V

    .line 248
    return-void
.end method

.method public final onClearMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onClearMessage(Ljava/util/List;)V

    .line 253
    return-void
.end method

.method public final onDraftChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onDraftChanged(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public final onExtensionChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onExtensionChanged(Ljava/util/List;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a(Ljava/util/List;)V

    .line 186
    return-void
.end method

.method public final onGroupIconChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onGroupIconChanged(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method public final onGroupLevelChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onGroupLevelChanged(Ljava/util/List;)V

    .line 237
    return-void
.end method

.method public final onGroupOwnerChange(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onGroupOwnerChange(Lcom/alibaba/wukong/im/Conversation;)V

    .line 273
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 1022
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 2022
    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 3022
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c()V

    .line 277
    :cond_0
    return-void
.end method

.method public final onIconChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onIconChanged(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public final onJoinValidationTypeChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onJoinValidationTypeChanged(Ljava/util/List;)V

    .line 242
    return-void
.end method

.method public final onLatestMessageChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLatestMessageChanged(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public final onLocalExtrasChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLocalExtrasChanged(Ljava/util/List;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a(Ljava/util/List;)V

    .line 197
    return-void
.end method

.method public final onMemberCountChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onMemberCountChanged(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public final onMemberLimitChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onMemberLimitChanged(Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public final onNotificationChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onNotificationChanged(Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public final onNotificationSoundChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onNotificationSoundChanged(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public final onPrivateExtensionChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onPrivateExtensionChanged(Ljava/util/List;)V

    .line 258
    return-void
.end method

.method public final onShowHistoryTypeChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onShowHistoryTypeChanged(Ljava/util/List;)V

    .line 268
    return-void
.end method

.method public final onStatusChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onStatusChanged(Ljava/util/List;)V

    .line 159
    return-void
.end method

.method public final onTagChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTagChanged(Ljava/util/List;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;->a(Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public final onTitleChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTitleChanged(Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public final onTopChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTopChanged(Ljava/util/List;)V

    .line 207
    return-void
.end method

.method public final onTypingEvent(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "command"    # Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .param p3, "type"    # Lcom/alibaba/wukong/im/Conversation$TypingType;

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTypingEvent(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 227
    return-void
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onUnreadCountChanged(Ljava/util/List;)V

    .line 169
    return-void
.end method
