.class public interface abstract Lapl$a;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverContract.java"

# interfaces
.implements Lcjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method
