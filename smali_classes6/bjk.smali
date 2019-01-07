.class public final Lbjk;
.super Ljava/lang/Object;
.source "DingAttachmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static a(JLjava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 8
    .param p0, "sendId"    # J
    .param p2, "dingId"    # Ljava/lang/String;
    .param p3, "attachment"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    const/4 v2, 0x0

    .line 197
    if-nez p3, :cond_0

    .line 224
    :goto_0
    return-object v2

    .line 200
    :cond_0
    new-instance v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 202
    .local v2, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :try_start_0
    iget-object v3, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iget-object v4, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 203
    const-string/jumbo v3, "DING"

    const/4 v4, 0x0

    invoke-static {p2, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 204
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 205
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 206
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    .line 207
    iget-wide v4, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    iput-wide v4, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 208
    const/4 v3, 0x0

    iput v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 209
    iput-wide p0, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 210
    iget-object v3, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 211
    iget-object v3, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 212
    iget-object v1, p3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 213
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "o"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "o"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "o"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const/4 v3, 0x1

    iput v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 217
    .end local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 218
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 220
    :cond_2
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v5, "ding"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v3, "[DingAttachmentUtil]getPhotoObject failed"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "0KB"

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 51
    const-string/jumbo v0, "%sB"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 53
    const-string/jumbo v0, "%3.1fKB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v0, "%3.1fMB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "rex"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 61
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 131
    iget v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v7

    .line 132
    .local v7, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 133
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 138
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 139
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 140
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 143
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v4, "ding"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 150
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 151
    .local v2, "linkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string/jumbo v6, "^(http|https)://qr.dingtalk.com/page/"

    iget-object v7, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lbjk;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    const-string/jumbo v7, "/page/businessConference"

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    :try_start_0
    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 158
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 159
    const-string/jumbo v6, "appointId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "reservationId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    .line 161
    .local v4, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    invoke-virtual {v4, p0, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v3    # "reservationId":Ljava/lang/String;
    .end local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "[DingAttachmentUtil]navToMicroAppLink failed"

    invoke-static {v6, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string/jumbo v6, "^(http|https)://qr.dingtalk.com/page/"

    iget-object v7, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Lbjk;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    const-string/jumbo v7, "/page/videoConference"

    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    :try_start_1
    iget-object v6, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 170
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 171
    const-string/jumbo v6, "conferenceId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "confID":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    .line 174
    .restart local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    invoke-virtual {v4, p0, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 176
    .end local v0    # "confID":Ljava/lang/String;
    .end local v4    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "[DingAttachmentUtil]navToMicroAppLink failed"

    invoke-static {v6, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    iget-object v7, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
