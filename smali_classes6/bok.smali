.class public interface abstract Lbok;
.super Ljava/lang/Object;
.source "ImageDataInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbok$b;,
        Lbok$a;
    }
.end annotation


# virtual methods
.method public abstract calcThumbUrl(Landroid/content/Context;Lbol;Lbok$a;Lbok$b;)Ljava/lang/String;
    .annotation build Lcom/alibaba/android/dingtalk/circle/utils/SideEffect;
    .end annotation

    .annotation build Lcom/alibaba/android/dingtalk/circle/utils/Sync;
    .end annotation
.end method

.method public abstract getLocalPhoto()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
.end method

.method public abstract getLocalSize()Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
.end method

.method public abstract getRequestParams(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getThumbUrl()Ljava/lang/String;
.end method

.method public abstract isMockPost()Z
.end method
