.class public final Lgwd;
.super Ljava/lang/Object;
.source "SystemShareForNetImages.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:[Ljava/lang/String;

.field public c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "images"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lgwd;->a:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lgwd;->b:[Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lgwd;->f:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lgwd;->c:Lcma;

    .line 54
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lgwd;->g:Ljava/util/LinkedList;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lgwd;->d:Ljava/util/List;

    .line 56
    iget-object v2, p0, Lgwd;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgwd;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 57
    iget-object v3, p0, Lgwd;->b:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 58
    .local v1, "image":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    :try_start_0
    iget-object v5, p0, Lgwd;->g:Ljava/util/LinkedList;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    const-string/jumbo v5, "http"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    iget-object v5, p0, Lgwd;->g:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, p0, Lgwd;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v1    # "image":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static synthetic a(Lgwd;)V
    .locals 0
    .param p0, "x0"    # Lgwd;

    .prologue
    .line 35
    invoke-virtual {p0}, Lgwd;->a()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "imagePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 182
    const-string/jumbo v1, ""

    .line 184
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lgwd;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lgwd;->g:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgwd;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 101
    iget-object v1, p0, Lgwd;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "netImage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1122
    invoke-static {}, Lgvz;->a()Lgvz;

    move-result-object v2

    iget-object v3, p0, Lgwd;->a:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v4, Lgwd$2;

    invoke-direct {v4, p0, v0}, Lgwd$2;-><init>(Lgwd;Ljava/lang/String;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lgwd;->a:Landroid/app/Activity;

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v3, v0, v1}, Lgvz;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 119
    .end local v0    # "netImage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0    # "netImage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lgwd;->a()V

    goto :goto_0

    .line 108
    .end local v0    # "netImage":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lgwd;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 111
    :cond_3
    iget-object v1, p0, Lgwd;->d:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgwd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1154
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1155
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    const-string/jumbo v1, "image/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    iget-object v1, p0, Lgwd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1160
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_4

    .line 1162
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    iget-object v2, p0, Lgwd;->c:Lcma;

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Lgwd;->c:Lcma;

    const-string/jumbo v3, "404"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "system share start intent fail :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    :cond_5
    :try_start_1
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1166
    iget-object v1, p0, Lgwd;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1167
    const-string/jumbo v1, "Kdescription"

    iget-object v3, p0, Lgwd;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    :cond_6
    const v1, 0x10000001

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1170
    iget-object v1, p0, Lgwd;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1171
    iget-object v1, p0, Lgwd;->c:Lcma;

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lgwd;->c:Lcma;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 114
    :cond_7
    iget-object v1, p0, Lgwd;->c:Lcma;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lgwd;->c:Lcma;

    const-string/jumbo v2, "404"

    const-string/jumbo v3, "no image can share"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
