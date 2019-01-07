.class public Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
.super Ljava/lang/Object;
.source "PhotoObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final PIC_FLAG_ORIGIN:I = 0x1

.field private static final serialVersionUID:J = 0x7c9a2f6a88c7ca5eL


# instance fields
.field public bigUrl:Ljava/lang/String;

.field public bigUrlHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bigUrlParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public data:J

.field public extension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filename:Ljava/lang/String;

.field public id:J

.field public name:Ljava/lang/String;

.field public orientation:I

.field public originUrl:Ljava/lang/String;

.field public originUrlHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public originUrlParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public picFlag:I

.field public picSize:J

.field public selfSend:Z

.field public smallUrl:Ljava/lang/String;

.field public smallUrlHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public smallUrlParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J

.field public url:Ljava/lang/String;

.field public urlHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public urlParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 136
    .local v0, "obj":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 137
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_0
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    .line 139
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_1
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 140
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_2
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 142
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlParams:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_3
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlParams:Ljava/util/HashMap;

    .line 143
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_4
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 145
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlParams:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_5
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlParams:Ljava/util/HashMap;

    .line 146
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_6
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 148
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_7
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    .line 149
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 150
    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    .line 151
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    iput v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 152
    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 153
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    iput-boolean v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 154
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    iput v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    .line 155
    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 156
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :goto_8
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 158
    return-object v0

    :cond_0
    move-object v1, v2

    .line 138
    goto/16 :goto_0

    :cond_1
    move-object v1, v2

    .line 139
    goto/16 :goto_1

    :cond_2
    move-object v1, v2

    .line 141
    goto/16 :goto_2

    :cond_3
    move-object v1, v2

    .line 142
    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 144
    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 145
    goto :goto_5

    :cond_6
    move-object v1, v2

    .line 147
    goto :goto_6

    :cond_7
    move-object v1, v2

    .line 148
    goto :goto_7

    :cond_8
    move-object v1, v2

    .line 157
    goto :goto_8
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->clone()Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    if-ne p0, p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    if-eqz p1, :cond_a

    instance-of v3, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v3, :cond_a

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 168
    .local v0, "other":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-wide v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    iget-wide v6, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 169
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    :cond_4
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    .line 175
    goto :goto_0

    :cond_6
    move v1, v2

    .line 178
    goto :goto_0

    :cond_7
    move v1, v2

    .line 181
    goto :goto_0

    :cond_8
    move v1, v2

    .line 184
    goto :goto_0

    :cond_9
    move v1, v2

    .line 187
    goto :goto_0

    .end local v0    # "other":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_a
    move v1, v2

    .line 190
    goto :goto_0
.end method

.method public hasOrigin()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
