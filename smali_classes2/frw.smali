.class public final Lfrw;
.super Ljava/lang/Object;
.source "OrgUserNameObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "oid"    # J
    .param p3, "uid"    # J
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "pinyin"    # Ljava/lang/String;
    .param p7, "nick"    # Ljava/lang/String;
    .param p8, "nickPinyin"    # Ljava/lang/String;
    .param p9, "ver"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lfrw;->a:J

    .line 32
    iput-wide p3, p0, Lfrw;->b:J

    .line 33
    iput-object p5, p0, Lfrw;->c:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lfrw;->e:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lfrw;->f:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lfrw;->g:Ljava/lang/String;

    .line 37
    iput-wide p9, p0, Lfrw;->h:J

    .line 38
    return-void
.end method

.method public static a(Lfrw;)Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    .locals 6
    .param p0, "object"    # Lfrw;

    .prologue
    .line 50
    if-nez p0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;-><init>()V

    .line 54
    .local v0, "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    iget-wide v2, p0, Lfrw;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->oid:J

    .line 55
    iget-wide v2, p0, Lfrw;->b:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->uid:J

    .line 56
    iget-object v1, p0, Lfrw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->username:Ljava/lang/String;

    .line 57
    iget-wide v2, p0, Lfrw;->d:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->modifyTime:J

    .line 58
    iget-object v1, p0, Lfrw;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->pinyin:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lfrw;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->nick:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lfrw;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->nickPinyin:Ljava/lang/String;

    .line 61
    iget-wide v2, p0, Lfrw;->h:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->ver:J

    .line 62
    iget-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->modifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->modifyTime:J

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/user/entry/OrgUserNameEntry;)Lfrw;
    .locals 12
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    .prologue
    .line 44
    new-instance v1, Lfrw;

    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->oid:J

    iget-wide v4, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->uid:J

    iget-object v6, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->pinyin:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->nick:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->nickPinyin:Ljava/lang/String;

    iget-wide v10, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->ver:J

    invoke-direct/range {v1 .. v11}, Lfrw;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    .local v1, "object":Lfrw;
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->modifyTime:J

    iput-wide v2, v1, Lfrw;->d:J

    .line 46
    return-object v1
.end method
