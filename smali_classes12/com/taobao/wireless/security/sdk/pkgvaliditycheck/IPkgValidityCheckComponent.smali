.class public interface abstract Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "misc"
.end annotation


# static fields
.field public static final VALID_TYPE_PACKAGE:I = 0x0

.field public static final VALID_TYPE_PATCH:I = 0x1


# virtual methods
.method public varargs abstract checkEnvAndFiles([Ljava/lang/String;)I
.end method

.method public abstract generateValidPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract isPackageValid(Ljava/lang/String;)Z
.end method

.method public abstract isPackageValidEx(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
