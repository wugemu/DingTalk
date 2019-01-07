.class public interface abstract Lcom/alibaba/wukong/im/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/User$Gender;
    }
.end annotation


# virtual methods
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract aliasPinyin()Ljava/lang/String;
.end method

.method public abstract avatar()Ljava/lang/String;
.end method

.method public abstract birthday()J
.end method

.method public abstract city()Ljava/lang/String;
.end method

.method public abstract countryCode()Ljava/lang/String;
.end method

.method public abstract extension(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract extension()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract gender()I
.end method

.method public abstract isActive()Z
.end method

.method public abstract mobile()Ljava/lang/String;
.end method

.method public abstract nickname()Ljava/lang/String;
.end method

.method public abstract nicknamePinyin()Ljava/lang/String;
.end method

.method public abstract openId()J
.end method

.method public abstract remark()Ljava/lang/String;
.end method

.method public abstract remarkExtension(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract remarkExtension()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remarkSound()Ljava/lang/String;
.end method

.method public abstract version()J
.end method
