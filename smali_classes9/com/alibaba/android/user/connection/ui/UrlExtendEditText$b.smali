.class final Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;
.super Ljava/lang/Object;
.source "UrlExtendEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 141
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 146
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->f:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iget-boolean v0, v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->c:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    .line 1099
    const-string/jumbo v0, ""

    .line 1100
    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "http://"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "https://"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rtsp://"

    aput-object v3, v10, v2

    .line 1101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    sget-object v3, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1103
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1104
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->g:I

    .line 1105
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->h:I

    .line 1106
    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    iget v5, v1, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->g:I

    iget v8, v1, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->h:I

    invoke-interface {v4, p1, v5, v8}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1107
    :cond_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1108
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1112
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 1113
    const-string/jumbo v7, ""

    .line 157
    .local v7, "url":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->b(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    .end local v7    # "url":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .line 1117
    const/4 v1, 0x0

    move v9, v1

    :goto_3
    const/4 v1, 0x3

    if-ge v9, v1, :cond_e

    .line 1118
    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, v10, v9

    const/4 v4, 0x0

    aget-object v5, v10, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1119
    const/4 v8, 0x1

    .line 1122
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, v10, v9

    const/4 v4, 0x0

    aget-object v5, v10, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 1129
    :goto_4
    if-nez v1, :cond_6

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v7, v0

    .line 1132
    goto :goto_2

    .line 1117
    :cond_7
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_3

    .line 162
    .restart local v7    # "url":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iget-boolean v0, v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->d:Z

    if-eqz v0, :cond_a

    .line 163
    if-gtz p4, :cond_9

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->d:Z

    goto/16 :goto_0

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_a
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    if-nez p3, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "addWord":Ljava/lang/String;
    const-string/jumbo v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v6    # "addWord":Ljava/lang/String;
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;Z)Z

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->d:Z

    goto/16 :goto_0

    .line 184
    .end local v7    # "url":Ljava/lang/String;
    :pswitch_1
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->c(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->c(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)I

    move-result v1

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->a(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;I)I

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->d(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)I

    move-result v1

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->b(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;I)I

    goto/16 :goto_0

    .line 188
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->d(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText$b;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->b(Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;Z)Z

    goto/16 :goto_0

    :cond_e
    move v1, v8

    goto/16 :goto_4

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
