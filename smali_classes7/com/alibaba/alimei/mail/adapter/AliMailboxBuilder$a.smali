.class final Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;
.super Ljava/lang/Object;
.source "AliMailboxBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;->a:Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 306
    if-ne p1, p2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v8

    .line 310
    :cond_1
    const-wide/16 v2, 0x0

    .line 311
    .local v2, "lOrder":J
    instance-of v9, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v9, :cond_4

    move-object v0, p1

    .line 312
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 313
    .local v0, "lFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    .line 319
    .end local v0    # "lFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    .line 320
    .local v6, "rOrder":J
    instance-of v9, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v9, :cond_5

    move-object v4, p2

    .line 321
    check-cast v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 322
    .local v4, "rFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    .line 328
    .end local v4    # "rFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    :goto_2
    cmp-long v9, v2, v6

    if-gez v9, :cond_6

    .line 329
    const/4 v8, -0x1

    goto :goto_0

    .line 314
    .end local v6    # "rOrder":J
    :cond_4
    instance-of v9, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v9, :cond_2

    move-object v1, p1

    .line 315
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 316
    .local v1, "lTag":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCareOrder:J

    goto :goto_1

    .line 323
    .end local v1    # "lTag":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .restart local v6    # "rOrder":J
    :cond_5
    instance-of v9, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v9, :cond_3

    move-object v5, p2

    .line 324
    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 325
    .local v5, "rTag":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-wide v6, v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCareOrder:J

    goto :goto_2

    .line 332
    .end local v5    # "rTag":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_6
    cmp-long v9, v2, v6

    if-lez v9, :cond_0

    .line 333
    const/4 v8, 0x1

    goto :goto_0
.end method
